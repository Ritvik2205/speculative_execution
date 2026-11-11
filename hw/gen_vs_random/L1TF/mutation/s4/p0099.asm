.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
neg al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -32
lea rcx, qword ptr [rax + rsi]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
add cl, cl
cmp al, al
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
cmovnz rcx, rdi
sbb ax, -9869
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dil
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
