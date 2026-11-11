.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ax, -15315
lea ebx, qword ptr [rax + rbx]
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
bt di, 157
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
or rbx, rbx
add bl, al
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cwd
lea rbx, qword ptr [rcx + rdi + 53]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and si, 96
sbb ecx, 9
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
mov al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
