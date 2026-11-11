.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
cmovb edi, ebx
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
inc al
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
adc bl, bl
cmp cl, 53
cmovs edx, edx
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
add dl, 41
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
sub al, cl
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
sbb rax, 183833426
test bl, dl
and rbx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 100
adc rbx, 100
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdi], dx
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
cmp al, 114
and rcx, -102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
