.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
add cl, 59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
lea ecx, qword ptr [rax + rdx + 40]
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
btr rdi, 85
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 71
or bx, 87
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
movsx rax, bl
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovb si, di
and dl, -98
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 96
and rcx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
