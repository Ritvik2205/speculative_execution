.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rbx
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], si
btc rsi, rdx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 25
add cl, 102 # instrumentation
sbb cx, ax
and rsi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rsi]
lea eax, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
cmovz edx, ebx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
cmovs rax, rcx
sbb rbx, 71
and rcx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
