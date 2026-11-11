.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
neg rax
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
dec edi
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], di
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 70
add cl, -70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
add sil, 12 # instrumentation
lea rcx, qword ptr [rbx + rsi]
test sil, 29
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rax], esi
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
bts si, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
