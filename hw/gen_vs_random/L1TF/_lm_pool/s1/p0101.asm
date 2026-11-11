.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and dl, dl
inc bl
xchg esi, ebx
or si, 42
add sil, dl
and cl, dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
bt rdx, rcx
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
or ax, 11821
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
