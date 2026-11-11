.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 19
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and bl, 68
xor sil, bl
neg rdi
xor al, bl
or ax, 85
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
or al, -22
test al, dil
xor bl, dil
not al
test bl, cl
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
or bl, sil
and eax, 943733866
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
