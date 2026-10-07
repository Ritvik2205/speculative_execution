.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx] 
lfence
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx] 
lfence
xor cl, dl 
test eax, -385619864 
or dl, dl 
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil 
lfence
cmovno esi, esi 
and rdi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rdi] 
lfence
cmovnz ebx, ecx 
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl 
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi] 
lfence
add rax, -1969014465 
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax] 
lfence
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi] 
lfence
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -14 
lfence
xor eax, -117 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
