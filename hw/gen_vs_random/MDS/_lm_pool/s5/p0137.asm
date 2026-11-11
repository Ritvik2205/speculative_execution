.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
and al, bl
xor dl, cl
and ecx, -104
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
or dil, bl
or sil, al
test eax, -675944960
xor cl, 55
test bl, cl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rsi, 66
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
