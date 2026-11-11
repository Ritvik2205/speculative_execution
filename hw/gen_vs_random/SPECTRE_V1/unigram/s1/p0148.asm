.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
lea dx, qword ptr [rax + rdx + 58]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], eax
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
movsx rsi, di
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdx]
cmp bl, -114
or si, 0b1000000000000000 # instrumentation
bsf ax, si
add al, 96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ecx
movsx cx, al
btr si, ax
xor rcx, 74
setns dl
test sil, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
