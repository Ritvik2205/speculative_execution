.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rbx], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
lfence
and dx, 0b11 # instrumentation
lfence
idiv word ptr [r14 + rbx] 
lfence
test ax, 18607 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock sub word ptr [r14 + rcx], bx 
lfence
setno bl 
lfence
lea rcx, qword ptr [rdi + rax] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovs rdx, qword ptr [r14 + rcx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmp byte ptr [r14 + rax], al 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
sbb rax, qword ptr [r14 + rcx] 
lfence
jns .bb_0.1 
jmp .exit_0 
.bb_0.1:
dec dl 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock btc dword ptr [r14 + rsi], 6 
lfence
mov si, 9258 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and qword ptr [r14 + rbx], 98 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
and word ptr [r14 + rdx], cx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
movsx ax, byte ptr [r14 + rsi] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovno rdi, qword ptr [r14 + rcx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovp edi, dword ptr [r14 + rdi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
