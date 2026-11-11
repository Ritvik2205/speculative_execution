.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], dx
bts ebx, 205
and dil, -126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
xor bl, cl
and dl, dil
and bl, 15 # instrumentation
cmovb ax, si
test dil, al
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
btr cx, 136
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ecx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
xor al, sil
and sil, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
and cl, 8 # instrumentation
cmovnl rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
