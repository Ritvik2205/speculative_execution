.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -74 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rsi], ax 
lfence
lea di, qword ptr [rdi + rax] 
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx] 
lfence
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi] 
lfence
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl 
lfence
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx] 
lfence
lea rax, qword ptr [rdx + rbx + 7590] 
mov di, bx 
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi] 
lfence
adc ax, -8436 
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi] 
lfence
mov edx, edi 
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi] 
lfence
not bl 
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
