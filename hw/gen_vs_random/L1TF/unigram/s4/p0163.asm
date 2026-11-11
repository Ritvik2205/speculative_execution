.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rbx, rcx
adc rdx, rdx
test cx, -20370
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
lea edx, qword ptr [rcx + rax]
and rdx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
add dl, 43 # instrumentation
adc dl, dl
sub dl, 61
neg al
or dl, 93
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], sil
xchg bx, dx
nop
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
