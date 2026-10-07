.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -33 
lfence
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx 
lfence
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx] 
lfence
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi] 
lfence
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], -78 
lfence
jmp .bb_0.1 
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi 
lfence
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi] 
lfence
mov dl, dl 
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi 
lfence
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx] 
lfence
not cl 
movzx rbx, sil 
and rdx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdx] 
lfence
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx] 
lfence
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx 
lfence
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -52 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
