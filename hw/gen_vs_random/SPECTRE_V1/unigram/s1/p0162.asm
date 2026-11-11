.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 12
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 30
setno bl
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea di, qword ptr [rbx]
add bl, -52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
test esi, 42
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 11
and rax, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
mul cl
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
add sil, 63 # instrumentation
cmovl si, bx
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
