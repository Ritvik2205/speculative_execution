.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap rdi
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
cmp al, 65
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], -12
cmovs rdi, rsi
xor dl, dil
mov sil, al
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
cmovl rbx, rbx
setz al
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
imul ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
