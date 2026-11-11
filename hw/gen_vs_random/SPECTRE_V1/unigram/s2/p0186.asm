.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 70
btr dx, 68
add dl, -85 # instrumentation
add dl, -62 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 20
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
bt esi, 18
mul al
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 30
and rdx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
or si, 0b1000000000000000 # instrumentation
bsr ax, si
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
