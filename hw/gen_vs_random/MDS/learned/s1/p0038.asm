.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, 2
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
or dl, 22
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rbx
or cl, dil
or dil, -57
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 53
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 88
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 9
and al, dl
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rcx], di
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
xor dl, al
test cl, 93
lea eax, qword ptr [rsi + rcx + 72]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
test rdx, -1624442902
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
