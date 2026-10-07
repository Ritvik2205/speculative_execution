.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
lfence
or al, byte ptr [r14 + rbx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
sub edx, dword ptr [r14 + rcx] 
lfence
xor cl, dl 
lfence
test eax, -385619864 
lfence
or dl, dl 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
xchg byte ptr [r14 + rdx], dil 
lfence
cmovno esi, esi 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovle edx, dword ptr [r14 + rdi] 
lfence
cmovnz ebx, ecx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
mov byte ptr [r14 + rcx], dl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
setnle byte ptr [r14 + rsi] 
lfence
add rax, -1969014465 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
setns byte ptr [r14 + rax] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or rdi, qword ptr [r14 + rdi] 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock xor dword ptr [r14 + rbx], -14 
lfence
xor eax, -117 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
