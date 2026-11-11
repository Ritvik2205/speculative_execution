.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 7
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
xor bl, 17
sbb al, cl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], di
setno bl
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], esi
bts rdx, 41
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, -61
cmovp esi, eax
bswap rsi
lea rcx, qword ptr [rdx]
bt rdi, rcx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
add al, -125 # instrumentation
cmovb edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
