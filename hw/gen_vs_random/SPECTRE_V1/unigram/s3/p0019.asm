.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, -77
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
sbb bl, bl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
adc ebx, 43
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
lea si, qword ptr [rax + rdi]
add dl, 91 # instrumentation
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
jo .bb_0.1
jmp .exit_0
.bb_0.1:
lea di, qword ptr [rax + rbx + 81]
xchg rdx, rsi
and rax, -273199823
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
add al, 34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
add al, 123 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
