.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
and dl, -73
or edx, -78
btc rsi, rsi
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and bl, 38 # instrumentation
cmovbe ecx, ebx
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
jmp .bb_0.1
.bb_0.1:
and ax, 5001
cmovnle rbx, rax
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
or si, 0b1000000000000000 # instrumentation
bsr dx, si
xor rax, -843636050
and rdi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdi]
xor sil, cl
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
not al
and rbx, rbx
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
test rax, 1949278494
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and dl, 50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
xor eax, 984871847
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
bts edx, ebx
test cl, cl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
