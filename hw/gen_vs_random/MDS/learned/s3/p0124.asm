.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
or cl, -77
and cl, -111
or al, -17
or al, cl
test esi, 1857129931
xor sil, al
and al, 84
jmp .bb_0.1
.bb_0.1:
or cl, sil
or al, -24
not dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
