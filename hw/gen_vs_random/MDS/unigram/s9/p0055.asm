.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 66
xor di, -83
btr si, si
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and dl, dl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
xor al, 9
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 67
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], eax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rdx], ebx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
and bl, -34 # instrumentation
cmovs rsi, rbx
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
xor si, 91
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -15
and dl, 119 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rbx]
and di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
