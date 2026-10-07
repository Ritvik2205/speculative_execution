.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -74 # instrumentation
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and ax, 0b111 # instrumentation
lfence
btr word ptr [r14 + rsi], ax 
lfence
lea di, qword ptr [rdi + rax] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovz ax, word ptr [r14 + rdx] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
movsx eax, word ptr [r14 + rsi] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovbe rcx, qword ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
and byte ptr [r14 + rax], cl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
dec byte ptr [r14 + rcx] 
lfence
lea rax, qword ptr [rdx + rbx + 7590] 
lfence
mov di, bx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
inc dword ptr [r14 + rsi] 
lfence
adc ax, -8436 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
xor edx, dword ptr [r14 + rdi] 
lfence
mov edx, edi 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
sets byte ptr [r14 + rsi] 
lfence
not bl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
add al, byte ptr [r14 + rsi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
