.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
lea rsi, qword ptr [rcx + rdx]
test al, al
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
bts ax, ax
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 114
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
xor dil, -42
sub sil, -99
sbb al, al
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dil
add dl, -53 # instrumentation
lea rcx, qword ptr [rdi + rdx + 91]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
