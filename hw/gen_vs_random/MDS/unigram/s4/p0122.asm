.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 91 # instrumentation
cmovle rbx, rbx
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
bt edi, 17
and dl, -11 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
or ebx, -104
and rdx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdx]
and al, -23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
xor rcx, 71
and rcx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], dx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rdi
and al, al
and sil, -9
cmovo di, ax
bt ebx, edi
not dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
