.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -6
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
mov al, -26
cmovp rcx, rbx
lea ebx, qword ptr [rdx + rbx]
and rdi, -60
bt edi, 191
cmovns edi, edi
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ecx
cmovb ebx, ecx
lea di, qword ptr [rax]
mov si, bx
cwd
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
