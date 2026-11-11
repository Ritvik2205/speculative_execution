.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bx
setp dil
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
xor al, 89
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
and al, al
test bl, -92
lea rdi, qword ptr [rdi + rdx + 10019]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 46
or di, bx
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
sbb rdx, rdx
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rcx + rdi + 62995]
bts rsi, rdx
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
adc al, -61
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
not eax
adc bl, bl
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
