.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], ax
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], -45
and rbx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rbx]
or ecx, 50
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], edi
jno .bb_0.1
jmp .exit_0
.bb_0.1:
inc dl
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 20
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
add bl, -64 # instrumentation
cmovnle ecx, eax
and rsi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rsi]
add cx, -103
lea edi, qword ptr [rbx]
add bl, -70 # instrumentation
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rax
cmp rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
