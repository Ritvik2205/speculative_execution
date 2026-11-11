.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -19
or cl, al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
jmp .bb_0.1
.bb_0.1:
or sil, -49
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
test cl, 101
and al, 84
test sil, -55
or cl, -36
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
not al
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
bts ax, 22
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdx]
and al, -55
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor al, -26
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
or dil, sil
xor eax, -885380838
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
