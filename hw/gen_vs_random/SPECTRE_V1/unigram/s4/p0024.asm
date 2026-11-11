.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cwde
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 49
setno sil
lea rax, qword ptr [rax + rdx + 84]
mul cl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ebx
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
movsx rax, sil
jno .bb_0.1
jmp .exit_0
.bb_0.1:
adc dl, dl
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
add dl, 6 # instrumentation
adc rax, -384715932
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], ebx
add dl, 35 # instrumentation
cmovnz rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
