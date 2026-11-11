.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, eax
or al, -58
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and dl, -73
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
test bl, dil
test cl, al
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
test dil, dl
or eax, -927349615
test dx, 16353
xor rax, -1499464454
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ecx
and sil, 89
and sil, -9
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
