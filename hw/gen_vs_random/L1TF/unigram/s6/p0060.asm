.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 30
setbe bl
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rax], dx
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
cmp eax, eax
add di, 15
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rsi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdi]
cmovnz di, bx
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
bts cx, 176
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
test di, 60
neg ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
