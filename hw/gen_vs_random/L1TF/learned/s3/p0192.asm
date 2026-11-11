.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dx, -51
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
mov bl, dl
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 58
and al, -26 # instrumentation
cmovnp rsi, rax
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
cmovp esi, ebx
lea di, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
sub esi, 62
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
sub ecx, 10
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 4
add dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
