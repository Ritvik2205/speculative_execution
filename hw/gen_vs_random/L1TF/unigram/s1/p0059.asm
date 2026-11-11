.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 88
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
bts rdi, rcx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 25
xor dl, cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 771970974
test bx, 69
cmp al, 74
and rdx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdi
setp cl
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rbx
add al, 27 # instrumentation
sbb ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
