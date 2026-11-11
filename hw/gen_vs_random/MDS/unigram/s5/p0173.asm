.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 13090
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
btc ebx, ebx
btc esi, esi
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
btc eax, 40
test ax, 6779
cmovbe eax, eax
cmovnbe eax, eax
and dl, 57 # instrumentation
cmovnb bx, cx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], bx
and ebx, 42
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
