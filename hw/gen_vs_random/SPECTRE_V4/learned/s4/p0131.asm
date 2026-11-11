.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 30
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
movsx ecx, al
or eax, -1341747033
adc ax, 29444
cmp al, dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
sub bl, 66
and al, sil
cmp eax, -813838876
test ebx, 19
cmp dil, dl
cmp cl, 107
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and al, 49
adc sil, dil
xor dil, sil
neg dl
cmovle rdx, rax
or ax, -30990
cmp al, bl
sub sil, 71
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
cmp al, 109
mov al, 124
adc dil, bl
or edx, -118
and dil, -61
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
