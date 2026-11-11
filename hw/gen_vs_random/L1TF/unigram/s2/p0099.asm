.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
or ecx, esi
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rbx
cmovle rdi, rax
and al, al
and rsi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rsi]
movsx rdx, di
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rdi
xor dil, sil
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
mul al
cmovl si, si
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
