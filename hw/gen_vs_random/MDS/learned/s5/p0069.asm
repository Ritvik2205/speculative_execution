.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or dil, -71
and sil, -9
and al, bl
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
xor al, cl
test cl, 54
and cl, dil
and al, -103
test al, dl
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
xor eax, -885380838
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
or dil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
