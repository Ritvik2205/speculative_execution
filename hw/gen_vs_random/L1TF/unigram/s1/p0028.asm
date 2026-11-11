.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
cmp bx, -21
and dl, 59
dec dx
cmp si, 56
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rbx], eax
lea rax, qword ptr [rsi + rdx + 66]
add dl, 115 # instrumentation
lea ebx, qword ptr [rbx + rdx]
setz dil
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
xchg ebx, eax
and rbx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rbx]
not esi
and rcx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rcx]
add dl, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
