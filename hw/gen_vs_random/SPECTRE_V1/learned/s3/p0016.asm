.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
sbb dl, dl
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
lea ebx, qword ptr [rdx + rdi + 15]
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
movsx rcx, si
xor rsi, -124
add sil, -6 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
