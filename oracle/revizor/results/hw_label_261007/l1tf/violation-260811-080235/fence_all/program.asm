.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 59 # instrumentation
lfence
cmovns eax, edx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmp word ptr [r14 + rdx], -64 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock adc dword ptr [r14 + rcx], -105 
lfence
inc cl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rdx], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
lfence
and rax, 0b1111111111111 # instrumentation
lfence
or bx, word ptr [r14 + rax] 
lfence
and al, -111 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
test qword ptr [r14 + rbx], 358568732 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovle bx, word ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
mov bx, word ptr [r14 + rax] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and esi, 0b111 # instrumentation
lfence
bts dword ptr [r14 + rcx], esi 
lfence
jmp .bb_0.1 
.bb_0.1:
lea rbx, qword ptr [rsi + rsi] 
lfence
bts rax, 45 
lfence
or ebx, edx 
lfence
cmp cl, -71 
lfence
adc al, -90 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
