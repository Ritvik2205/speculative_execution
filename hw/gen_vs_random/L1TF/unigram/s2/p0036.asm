.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, dil
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
or sil, -5
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
lea ebx, qword ptr [rax + rdi + 48]
cmovnz edi, ebx
add cl, al
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 91
inc ebx
xor bx, 4
add al, -112 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
btc eax, esi
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
bt edx, 82
cmovb ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
