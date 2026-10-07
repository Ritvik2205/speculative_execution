.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
lfence
cmp qword ptr [r14 + rsi], -73 
lfence
or di, 0b1000000000000000 # instrumentation
lfence
bsf si, di 
lfence
add al, 27 # instrumentation
lfence
sbb ecx, edi 
lfence
and rax, 363226538 
lfence
movzx rax, bl 
lfence
movzx edi, dx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
bt dword ptr [r14 + rax], 0 
lfence
bts di, 1 
lfence
jmp .bb_0.1 
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lfence
lock xor word ptr [r14 + rsi], cx 
lfence
inc bl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
mov dword ptr [r14 + rcx], -259018739 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovle di, word ptr [r14 + rbx] 
lfence
or edi, 19 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
test word ptr [r14 + rax], -9758 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
xor edx, dword ptr [r14 + rsi] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
btc qword ptr [r14 + rdi], 7 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
