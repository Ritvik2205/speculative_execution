.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
neg al
cmp al, al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
add cl, cl
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -32
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
cmovnz rcx, rdi
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
sbb ax, -14164
lea rcx, qword ptr [rax + rsi]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
