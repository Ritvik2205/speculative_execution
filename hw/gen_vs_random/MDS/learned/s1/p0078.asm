.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -97
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
not dil
not cl
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
or rdi, -11
xor cl, al
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
xor cl, dil
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
cmovnbe rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
