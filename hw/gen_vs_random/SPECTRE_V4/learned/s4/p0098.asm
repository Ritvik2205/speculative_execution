.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
adc bl, 79
mov bl, bl
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
mov bl, dl
adc al, dl
or dil, al
or eax, -612395655
and dl, 124
adc sil, 77
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
or cx, 23
cmp bl, -79
or dl, bl
adc eax, 917540672
add al, -44
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
sbb bl, dil
xor dx, -43
cmp al, cl
or ax, -13633
cmp al, -53
cmp al, -122
or ebx, -82
sbb cl, 45
adc al, sil
add dl, cl
mov dil, bl
sub cl, 92
or al, -16
or cl, cl
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
add dl, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
