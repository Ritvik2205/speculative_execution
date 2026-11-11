.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg rbx
cmovbe rbx, rdi
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 20
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
xchg al, dil
sbb rdi, 57
add bl, -64 # instrumentation
cmovnle esi, ecx
and rsi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rsi]
lea cx, qword ptr [rcx + rdi + 5]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovno ax, di
and rsi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
cmp dl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
