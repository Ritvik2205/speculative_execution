.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, rcx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 91
adc al, cl
test dl, al
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], ax
add dl, -15 # instrumentation
cmovl rdx, rax
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rax
adc dl, 51
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
sub edi, 91
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], -12
bt ebx, ecx
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
xor bl, al
xchg sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
