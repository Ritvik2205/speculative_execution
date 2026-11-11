.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 86
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
and bl, dil
test cl, 54
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or al, sil
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ebx
and dil, -62
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and dx, 3
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
