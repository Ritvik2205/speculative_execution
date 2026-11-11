.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
test bl, -92
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ecx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 84
cmp sil, bl
add dil, -49 # instrumentation
adc dil, cl
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rsi
xchg edx, esi
add dl, -53 # instrumentation
lea rax, qword ptr [rcx + rsi + 51]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -114
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
lea di, qword ptr [rsi + rsi + 55]
sets bl
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
