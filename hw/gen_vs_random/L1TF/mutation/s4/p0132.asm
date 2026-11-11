.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg al
cmp al, al
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
add cl, 97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
add cl, cl
cmovnz rcx, rdi
lea rcx, qword ptr [rax + rsi]
sbb ax, -9869
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -32
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
jmp .bb_0.2
.bb_0.2:
add bl, -113 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
sbb eax, -403815802
dec edx
xor al, al
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
not sil
test al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
