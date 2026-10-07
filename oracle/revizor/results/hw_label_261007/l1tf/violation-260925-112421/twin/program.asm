.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lfence
lock btr dword ptr [r14 + rcx], 5 
and rdx, 0b1111111111111 # instrumentation
lfence
sub dl, byte ptr [r14 + rdx] 
setnl dl 
and rsi, 0b1111111111111 # instrumentation
lfence
movsx rdx, byte ptr [r14 + rsi] 
sbb bl, cl 
and rcx, 0b1111111111111 # instrumentation
lfence
inc word ptr [r14 + rcx] 
and rsi, 0b1111111111111 # instrumentation
lfence
seto byte ptr [r14 + rsi] 
adc eax, 551972257 
and rax, 0b1111111111111 # instrumentation
lfence
not byte ptr [r14 + rax] 
sbb dx, di 
add bl, cl 
and rdx, 0b1111111111000 # instrumentation
lfence
lock or word ptr [r14 + rdx], cx 
and rax, 0b1111111111111 # instrumentation
lfence
cmp dword ptr [r14 + rax], 54 
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lfence
lock bts qword ptr [r14 + rcx], rax 
and rcx, 0b1111111111111 # instrumentation
lfence
neg dword ptr [r14 + rcx] 
or al, al 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
