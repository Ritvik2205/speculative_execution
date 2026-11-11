.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rdi + rdx]
add cl, -51 # instrumentation
cmovl eax, ecx
add rcx, 23
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
add cl, -56 # instrumentation
sbb rdi, 16
test di, bx
lea rdi, qword ptr [rbx + rdi]
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
xor di, di
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
