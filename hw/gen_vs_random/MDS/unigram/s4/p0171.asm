.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rsi, 207
and cl, -83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], eax
test dil, dil
and rsi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
bts ebx, 205
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
cmovl edi, ebx
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
or sil, dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
and dl, sil
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
and dil, -48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
xor al, al
xor rdi, -9
and ebx, 19
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
