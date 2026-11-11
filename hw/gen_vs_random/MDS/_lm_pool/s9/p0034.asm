.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -4
test cl, -113
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
xor sil, 94
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
xor rcx, 71
and dl, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
xor cl, 55
test dl, al
test al, dil
cmovle ax, di
and bl, al
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
not bl
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
