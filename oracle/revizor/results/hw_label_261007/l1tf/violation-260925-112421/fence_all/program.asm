.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lfence
lock btr dword ptr [r14 + rcx], 5 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sub dl, byte ptr [r14 + rdx] 
lfence
setnl dl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
movsx rdx, byte ptr [r14 + rsi] 
lfence
sbb bl, cl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
inc word ptr [r14 + rcx] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
seto byte ptr [r14 + rsi] 
lfence
adc eax, 551972257 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
not byte ptr [r14 + rax] 
lfence
sbb dx, di 
lfence
add bl, cl 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock or word ptr [r14 + rdx], cx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmp dword ptr [r14 + rax], 54 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
and rax, 0b111 # instrumentation
lfence
lock bts qword ptr [r14 + rcx], rax 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
neg dword ptr [r14 + rcx] 
lfence
or al, al 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
