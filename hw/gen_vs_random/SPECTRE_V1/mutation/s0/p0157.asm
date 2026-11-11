.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
adc rax, rbx
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], bx
lea bx, qword ptr [rbx]
btr rbx, rdi
cmp al, 46
lea rdx, qword ptr [rbx + rdx + 6174]
and rsi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -94 # instrumentation
cmovnle rcx, rsi
or sil, 52
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -13
test al, 42
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 94
test rdi, -1846965753
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
