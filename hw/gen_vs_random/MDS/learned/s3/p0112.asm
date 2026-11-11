.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
or bl, al
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and ax, 13090
and al, -54
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
btc cx, 115
or bl, -62
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
not al
and al, 106
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
